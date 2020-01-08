var validator = {
		
common: {
	empty: { code: 'empty', desc: '입력하세요' },
	space: { code: 'space', desc: '공백없이 입력하세요'},
	min: { code: 'min', desc: '최소 5자이상' },
	max: { code: 'max', desc: '최대 10자이하' },
	nickmin: { code: 'nickmin', desc: '최소 2자이상'},
},
id: {
	valid: { code: 'valid', desc: '아이디 중복여부를 확인하세요' },
	invalid: { code: 'invalid', desc: '영문 소문자, 숫자만 입력 가능' },
	usable: { code: 'usable', desc: '사용 가능한 아이디'},
	unusable: { code: 'unusable', desc: '이미 사용중인 아이디'}
},
id_usable: function(val){
	if( val=='true' )	return this.id.usable;
	else				return this.id.unusable;
},
id_status: function(val){
	var space = /\s/g;
	var reg = /[^a-z0-9]/g;
	if( val=='' ) return this.common.empty;
	else if( val.match(space) ) return this.common.space;
	else if( reg.test(val) )    return this.id.invalid;
	else if( val.length<3 ) return this.common.min;
	else if( val.length>10 ) return this.common.max;
	else					return this.id.valid;
},
nickname: {
	valid: { code: 'valid', desc: '닉네임 중복여부를 확인하세요' },
	invalid: { code: 'invalid', desc: '한글과 영문만 입력 가능' },
	usable: { code: 'usable', desc: '사용 가능한 닉네임'},
	unusable: { code: 'unusable', desc: '이미 사용중인 닉네임'}
},
nick_usable: function(val){
	if( val=='true' )	return this.nickname.usable;
	else				return this.nickname.unusable;
},
nick_status: function(val){
	var space = /\s/g;
	var reg = /[^a-z0-9ㄱ-ㅎ가-힣]/g;
	if( val=='' ) return this.common.empty;
	else if( val.match(space) ) return this.common.space;
	else if( reg.test(val) )    return this.nickname.invalid;
	else if( val.length<2 ) return this.common.nickmin;
	else if( val.length>10 ) return this.common.max;
	else					return this.nickname.valid;
},
pwd: {
	valid: { code: 'valid', desc: '사용 가능한 비밀번호' },
	invalid: { code: 'invalid', desc: '영문 대/소문자, 숫자만 입력'},
	upperlack: { code: 'upperlack', desc: '영문 대문자를 입력'},
	lowerlack: { code: 'lowerlack', desc: '영문 소문자를 입력'},
	digitlack: { code: 'digitlack', desc: '숫자를 입력'},
	equal: { code: 'valid', desc: '비밀번호가 일치함' },
	notequal: { code: 'invalid', desc: '비밀번호가 일치하지 않음'},
},
pwd_status: function(val){
	var space = /\s/g;
	var reg = /[^a-zA-Z0-9]/g;
	var upper = /[A-Z]/g, lower = /[a-z]/g, digit = /[0-9]/g;
	if( val=='' )				return this.common.empty;
	else if( val.match(space) )	return this.common.space;
	else if( reg.test(val) )	return this.pwd.invalid;
	else if( val.length<5 )		return this.common.min;
	else if( val.length>10 )	return this.common.max;
	else if( !upper.test(val) ) return this.pwd.upperlack;
	else if( !lower.test(val) ) return this.pwd.lowerlack;
	else if( !digit.test(val) ) return this.pwd.digitlack;
	else						return this.pwd.valid;
	
},
pwd_ck_status: function(val, pwd){
	if( val=='' )				return this.common.empty;
	else if( val == pwd )	return this.pwd.equal;
	else						return this.pwd.notequal;
},
email: {
	valid: { code: 'valid', desc: '사용 가능한 이메일' },
	invalid: { code: 'invalid', desc: '이메일 형식이 맞지 않음'},
},
email_status: function(val){
	var reg = /^[_\.0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]+\.)+[a-zA-Z]{2,6}$/i;
	if( val=='' ) 				return this.common.empty;
	else if( reg.test(val) )	return this.email.valid;
	else						return this.email.invalid;
}
	
		
}



