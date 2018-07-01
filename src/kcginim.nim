 {.deadCodeElim: on.}
when defined(windows):
  const
    kcgi* = "kcgi.dll"
elif defined(macosx):
  const
    kcgi* = "libkcgi.dylib"
else:
  const
    kcgi* = "libkcgi.so"

type va_list {.importc, header: "<stdarg.h>".} = object

type
  khttp* {.size: sizeof(cint).} = enum
    KHTTP_100, KHTTP_101, KHTTP_103, KHTTP_200, KHTTP_201, KHTTP_202, KHTTP_203,
    KHTTP_204, KHTTP_205, KHTTP_206, KHTTP_207, KHTTP_300, KHTTP_301, KHTTP_302,
    KHTTP_303, KHTTP_304, KHTTP_306, KHTTP_307, KHTTP_308, KHTTP_400, KHTTP_401,
    KHTTP_402, KHTTP_403, KHTTP_404, KHTTP_405, KHTTP_406, KHTTP_407, KHTTP_408,
    KHTTP_409, KHTTP_410, KHTTP_411, KHTTP_412, KHTTP_413, KHTTP_414, KHTTP_415,
    KHTTP_416, KHTTP_417, KHTTP_424, KHTTP_428, KHTTP_429, KHTTP_431, KHTTP_500,
    KHTTP_501, KHTTP_502, KHTTP_503, KHTTP_504, KHTTP_505, KHTTP_507, KHTTP_511,
    KHTTP_MAX


type
  krequ* {.size: sizeof(cint).} = enum
    KREQU_ACCEPT, KREQU_ACCEPT_CHARSET, KREQU_ACCEPT_ENCODING,
    KREQU_ACCEPT_LANGUAGE, KREQU_AUTHORIZATION, KREQU_DEPTH, KREQU_FROM, KREQU_HOST,
    KREQU_IF, KREQU_IF_MODIFIED_SINCE, KREQU_IF_MATCH, KREQU_IF_NONE_MATCH,
    KREQU_IF_RANGE, KREQU_IF_UNMODIFIED_SINCE, KREQU_MAX_FORWARDS,
    KREQU_PROXY_AUTHORIZATION, KREQU_RANGE, KREQU_REFERER, KREQU_USER_AGENT,
    KREQU_MAX


type
  kresp* {.size: sizeof(cint).} = enum
    KRESP_ACCESS_CONTROL_ALLOW_ORIGIN, KRESP_ACCEPT_RANGES, KRESP_AGE, KRESP_ALLOW,
    KRESP_CACHE_CONTROL, KRESP_CONNECTION, KRESP_CONTENT_ENCODING,
    KRESP_CONTENT_LANGUAGE, KRESP_CONTENT_LENGTH, KRESP_CONTENT_LOCATION,
    KRESP_CONTENT_MD5, KRESP_CONTENT_DISPOSITION, KRESP_CONTENT_RANGE,
    KRESP_CONTENT_TYPE, KRESP_DATE, KRESP_ETAG, KRESP_EXPIRES, KRESP_LAST_MODIFIED,
    KRESP_LINK, KRESP_LOCATION, KRESP_P3P, KRESP_PRAGMA, KRESP_PROXY_AUTHENTICATE,
    KRESP_REFRESH, KRESP_RETRY_AFTER, KRESP_SERVER, KRESP_SET_COOKIE, KRESP_STATUS,
    KRESP_STRICT_TRANSPORT_SECURITY, KRESP_TRAILER, KRESP_TRANSFER_ENCODING,
    KRESP_UPGRADE, KRESP_VARY, KRESP_VIA, KRESP_WARNING, KRESP_WWW_AUTHENTICATE,
    KRESP_X_FRAME_OPTIONS, KRESP_MAX


type
  kattrx* {.size: sizeof(cint).} = enum
    KATTRX_STRING, KATTRX_INT, KATTRX_DOUBLE


type
  kmethod* {.size: sizeof(cint).} = enum
    KMETHOD_ACL, KMETHOD_CONNECT, KMETHOD_COPY, KMETHOD_DELETE, KMETHOD_GET,
    KMETHOD_HEAD, KMETHOD_LOCK, KMETHOD_MKCALENDAR, KMETHOD_MKCOL, KMETHOD_MOVE,
    KMETHOD_OPTIONS, KMETHOD_POST, KMETHOD_PROPFIND, KMETHOD_PROPPATCH, KMETHOD_PUT,
    KMETHOD_REPORT, KMETHOD_TRACE, KMETHOD_UNLOCK, KMETHOD_MAX


type
  kpairtype* {.size: sizeof(cint).} = enum
    KPAIR_INTEGER, KPAIR_STRING, KPAIR_DOUBLE, KPAIR_MAX


type
  kscheme* {.size: sizeof(cint).} = enum
    KSCHEME_AAA, KSCHEME_AAAS, KSCHEME_ABOUT, KSCHEME_ACAP, KSCHEME_ACCT,
    KSCHEME_CAP, KSCHEME_CID, KSCHEME_COAP, KSCHEME_COAPS, KSCHEME_CRID,
    KSCHEME_DATA, KSCHEME_DAV, KSCHEME_DICT, KSCHEME_DNS, KSCHEME_FILE, KSCHEME_FTP,
    KSCHEME_GEO, KSCHEME_GO, KSCHEME_GOPHER, KSCHEME_H323, KSCHEME_HTTP,
    KSCHEME_HTTPS, KSCHEME_IAX, KSCHEME_ICAP, KSCHEME_IM, KSCHEME_IMAP, KSCHEME_INFO,
    KSCHEME_IPP, KSCHEME_IRIS, KSCHEME_IRIS_BEEP, KSCHEME_IRIS_XPC,
    KSCHEME_IRIS_XPCS, KSCHEME_IRIS_LWZ, KSCHEME_JABBER, KSCHEME_LDAP,
    KSCHEME_MAILTO, KSCHEME_MID, KSCHEME_MSRP, KSCHEME_MSRPS, KSCHEME_MTQP,
    KSCHEME_MUPDATE, KSCHEME_NEWS, KSCHEME_NFS, KSCHEME_NI, KSCHEME_NIH,
    KSCHEME_NNTP, KSCHEME_OPAQUELOCKTOKEN, KSCHEME_POP, KSCHEME_PRES,
    KSCHEME_RELOAD, KSCHEME_RTSP, KSCHEME_RTSPS, KSCHEME_RTSPU, KSCHEME_SERVICE,
    KSCHEME_SESSION, KSCHEME_SHTTP, KSCHEME_SIEVE, KSCHEME_SIP, KSCHEME_SIPS,
    KSCHEME_SMS, KSCHEME_SNMP, KSCHEME_SOAP_BEEP, KSCHEME_SOAP_BEEPS, KSCHEME_STUN,
    KSCHEME_STUNS, KSCHEME_TAG, KSCHEME_TEL, KSCHEME_TELNET, KSCHEME_TFTP,
    KSCHEME_THISMESSAGE, KSCHEME_TN3270, KSCHEME_TIP, KSCHEME_TURN, KSCHEME_TURNS,
    KSCHEME_TV, KSCHEME_URN, KSCHEME_VEMMI, KSCHEME_WS, KSCHEME_WSS, KSCHEME_XCON,
    KSCHEME_XCON_USERID, KSCHEME_XMLRPC_BEEP, KSCHEME_XMLRPC_BEEPS, KSCHEME_XMPP,
    KSCHEME_Z39_50R, KSCHEME_Z39_50S, KSCHEME_MAX


type
  kmime* {.size: sizeof(cint).} = enum
    KMIME_APP_JAVASCRIPT, KMIME_APP_JSON, KMIME_APP_OCTET_STREAM, KMIME_APP_PDF,
    KMIME_APP_ZIP, KMIME_IMAGE_GIF, KMIME_IMAGE_JPEG, KMIME_IMAGE_PNG,
    KMIME_IMAGE_SVG_XML, KMIME_TEXT_CALENDAR, KMIME_TEXT_CSS, KMIME_TEXT_CSV,
    KMIME_TEXT_HTML, KMIME_TEXT_PLAIN, KMIME_TEXT_XML, KMIME_MAX


type
  kmimemap* {.bycopy.} = object
    name*: cstring
    mime*: csize

  kpairstate* {.size: sizeof(cint).} = enum
    KPAIR_UNCHECKED = 0, KPAIR_VALID, KPAIR_INVALID


type
  parsed_423712887* {.bycopy.} = object {.union.}
    i*: int64
    s*: cstring
    d*: cdouble

  kpair* {.bycopy.} = object
    key*: cstring
    keypos*: csize
    val*: cstring
    valsz*: csize
    file*: cstring
    ctype*: cstring
    ctypepos*: csize
    xcode*: cstring
    next*: ptr kpair
    state*: kpairstate
    `type`*: kpairtype
    parsed*: parsed_423712887
  
  kfcgi* {.bycopy.} = object
  
  kvalid* {.bycopy.} = object
    valid*: proc (kp: ptr kpair): cint {.cdecl.}
    name*: cstring

  kauth* {.size: sizeof(cint).} = enum
    KAUTH_NONE = 0, KAUTH_BASIC, KAUTH_DIGEST, KAUTH_UNKNOWN


type
  khttpalg* {.size: sizeof(cint).} = enum
    KHTTPALG_MD5 = 0, KHTTPALG_MD5_SESS, KHTTPALG_MAX


type
  khttpqop* {.size: sizeof(cint).} = enum
    KHTTPQOP_NONE = 0, KHTTPQOP_AUTH, KHTTPQOP_AUTH_INT, KHTTPQOP_MAX


type
  khttpdigest* {.bycopy.} = object
    alg*: khttpalg
    qop*: khttpqop
    user*: cstring
    uri*: cstring
    realm*: cstring
    nonce*: cstring
    cnonce*: cstring
    response*: cstring
    count*: uint32
    opaque*: cstring

  khttpbasic* {.bycopy.} = object
    response*: cstring

  INNER_C_UNION_2588486972* {.bycopy.} = object {.union.}
    digest*: khttpdigest
    basic*: khttpbasic

  khttpauth* {.bycopy.} = object
    `type`*: kauth
    authorised*: cint
    digest*: cstring
    d*: INNER_C_UNION_2588486972

  kdata* {.bycopy.} = object
  
  khead* {.bycopy.} = object
    key*: cstring
    val*: cstring

  kreq* {.bycopy.} = object
    reqmap*: array[KREQU_MAX, ptr khead]
    reqs*: ptr khead
    reqsz*: csize
    `method`*: kmethod
    auth*: kauth
    rawauth*: khttpauth
    cookies*: ptr kpair
    cookiesz*: csize
    cookiemap*: ptr ptr kpair
    cookienmap*: ptr ptr kpair
    fields*: ptr kpair
    fieldmap*: ptr ptr kpair
    fieldnmap*: ptr ptr kpair
    fieldsz*: csize
    mime*: csize
    page*: csize
    scheme*: kscheme
    path*: cstring
    suffix*: cstring
    fullpath*: cstring
    pagename*: cstring
    remote*: cstring
    host*: cstring
    port*: uint16
    kdata*: ptr kdata
    keys*: ptr kvalid
    keysz*: csize
    pname*: cstring
    arg*: pointer

  kopts* {.bycopy.} = object
    sndbufsz*: int

  kcgi_buf* {.bycopy.} = object
    buf*: cstring
    maxsz*: csize
    sz*: csize
    growsz*: csize

  ktemplate* {.bycopy.} = object
    key*: cstringArray
    keysz*: csize
    arg*: pointer
    cb*: proc (a2: csize; a3: pointer): cint {.cdecl.}

  kcgi_err* {.size: sizeof(cint).} = enum
    KCGI_OK = 0, KCGI_ENOMEM, KCGI_EXIT, KCGI_HUP, KCGI_ENFILE, KCGI_EAGAIN, KCGI_FORM,
    KCGI_SYSTEM


type
  ktemplate_writef* = proc (a2: cstring; a3: csize; a4: pointer): kcgi_err {.cdecl.}


type
  ktemplatex* {.bycopy.} = object
    writer*: ktemplate_writef
    fbk*: proc (a2: cstring; a3: csize; a4: pointer): cint {.cdecl.}


proc kcgi_strerror*(a2: kcgi_err): cstring {.cdecl, importc: "kcgi_strerror",
    dynlib: kcgi.}
proc khttp_body*(a2: ptr kreq): kcgi_err {.cdecl, importc: "khttp_body", dynlib: kcgi.}
proc khttp_body_compress*(a2: ptr kreq; a3: cint): kcgi_err {.cdecl,
    importc: "khttp_body_compress", dynlib: kcgi.}
proc khttp_free*(a2: ptr kreq) {.cdecl, importc: "khttp_free", dynlib: kcgi.}
proc khttp_child_free*(a2: ptr kreq) {.cdecl, importc: "khttp_child_free", dynlib: kcgi.}
proc khttp_head*(a2: ptr kreq; a3: cstring; a4: cstring): kcgi_err {.varargs, cdecl,
    importc: "khttp_head", dynlib: kcgi.}
proc khttp_parse*(a2: ptr kreq; a3: ptr kvalid; a4: csize; a5: cstringArray; a6: csize;
                 a7: csize): kcgi_err {.cdecl, importc: "khttp_parse", dynlib: kcgi.}
proc khttp_parsex*(a2: ptr kreq; a3: ptr kmimemap; a4: cstringArray; a5: csize;
                  a6: ptr kvalid; a7: csize; a8: cstringArray; a9: csize; a10: csize;
                  a11: csize; a12: pointer; a13: proc (a2: pointer) {.cdecl.};
                  a14: cuint; a15: ptr kopts): kcgi_err {.cdecl,
    importc: "khttp_parsex", dynlib: kcgi.}
proc khttp_putc*(a2: ptr kreq; a3: cint): kcgi_err {.cdecl, importc: "khttp_putc",
    dynlib: kcgi.}
proc khttp_puts*(a2: ptr kreq; a3: cstring): kcgi_err {.cdecl, importc: "khttp_puts",
    dynlib: kcgi.}
proc khttp_template*(a2: ptr kreq; a3: ptr ktemplate; a4: cstring): kcgi_err {.cdecl,
    importc: "khttp_template", dynlib: kcgi.}
proc khttp_template_fd*(a2: ptr kreq; a3: ptr ktemplate; a4: cint; a5: cstring): kcgi_err {.
    cdecl, importc: "khttp_template_fd", dynlib: kcgi.}
proc khttp_template_buf*(a2: ptr kreq; a3: ptr ktemplate; a4: cstring; a5: csize): kcgi_err {.
    cdecl, importc: "khttp_template_buf", dynlib: kcgi.}
proc khttp_templatex*(a2: ptr ktemplate; a3: cstring; a4: ptr ktemplatex; a5: pointer): kcgi_err {.
    cdecl, importc: "khttp_templatex", dynlib: kcgi.}
proc khttp_templatex_buf*(a2: ptr ktemplate; a3: cstring; a4: csize; a5: ptr ktemplatex;
                         a6: pointer): kcgi_err {.cdecl,
    importc: "khttp_templatex_buf", dynlib: kcgi.}
proc khttp_templatex_fd*(a2: ptr ktemplate; a3: cint; a4: cstring; a5: ptr ktemplatex;
                        a6: pointer): kcgi_err {.cdecl,
    importc: "khttp_templatex_fd", dynlib: kcgi.}
proc khttp_write*(a2: ptr kreq; a3: cstring; a4: csize): kcgi_err {.cdecl,
    importc: "khttp_write", dynlib: kcgi.}
proc kcgi_buf_write*(a2: cstring; a3: csize; a4: pointer): kcgi_err {.cdecl,
    importc: "kcgi_buf_write", dynlib: kcgi.}
proc kcgi_buf_putc*(a2: ptr kcgi_buf; a3: char): kcgi_err {.cdecl,
    importc: "kcgi_buf_putc", dynlib: kcgi.}
proc kcgi_buf_puts*(a2: ptr kcgi_buf; a3: cstring): kcgi_err {.cdecl,
    importc: "kcgi_buf_puts", dynlib: kcgi.}
proc khttpdigest_validate*(a2: ptr kreq; a3: cstring): cint {.cdecl,
    importc: "khttpdigest_validate", dynlib: kcgi.}
proc khttpdigest_validatehash*(a2: ptr kreq; a3: cstring): cint {.cdecl,
    importc: "khttpdigest_validatehash", dynlib: kcgi.}
proc khttpbasic_validate*(a2: ptr kreq; a3: cstring; a4: cstring): cint {.cdecl,
    importc: "khttpbasic_validate", dynlib: kcgi.}
proc kvalid_bit*(a2: ptr kpair): cint {.cdecl, importc: "kvalid_bit", dynlib: kcgi.}
proc kvalid_date*(a2: ptr kpair): cint {.cdecl, importc: "kvalid_date", dynlib: kcgi.}
proc kvalid_double*(a2: ptr kpair): cint {.cdecl, importc: "kvalid_double", dynlib: kcgi.}
proc kvalid_email*(a2: ptr kpair): cint {.cdecl, importc: "kvalid_email", dynlib: kcgi.}
proc kvalid_int*(a2: ptr kpair): cint {.cdecl, importc: "kvalid_int", dynlib: kcgi.}
proc kvalid_string*(a2: ptr kpair): cint {.cdecl, importc: "kvalid_string", dynlib: kcgi.}
proc kvalid_stringne*(a2: ptr kpair): cint {.cdecl, importc: "kvalid_stringne",
                                        dynlib: kcgi.}
proc kvalid_udouble*(a2: ptr kpair): cint {.cdecl, importc: "kvalid_udouble",
                                       dynlib: kcgi.}
proc kvalid_uint*(a2: ptr kpair): cint {.cdecl, importc: "kvalid_uint", dynlib: kcgi.}
proc kcgi_writer_disable*(a2: ptr kreq) {.cdecl, importc: "kcgi_writer_disable",
                                      dynlib: kcgi.}
proc khttp_fcgi_parse*(a2: ptr kfcgi; a3: ptr kreq): kcgi_err {.cdecl,
    importc: "khttp_fcgi_parse", dynlib: kcgi.}
proc khttp_fcgi_init*(a2: ptr ptr kfcgi; a3: ptr kvalid; a4: csize; a5: cstringArray;
                     a6: csize; a7: csize): kcgi_err {.cdecl,
    importc: "khttp_fcgi_init", dynlib: kcgi.}
proc khttp_fcgi_initx*(a2: ptr ptr kfcgi; a3: cstringArray; a4: csize; a5: ptr kvalid;
                      a6: csize; a7: ptr kmimemap; a8: csize; a9: cstringArray;
                      a10: csize; a11: csize; a12: pointer;
                      a13: proc (a2: pointer) {.cdecl.}; a14: cuint; a15: ptr kopts): kcgi_err {.
    cdecl, importc: "khttp_fcgi_initx", dynlib: kcgi.}
proc khttp_fcgi_free*(a2: ptr kfcgi): kcgi_err {.cdecl, importc: "khttp_fcgi_free",
    dynlib: kcgi.}
proc khttp_fcgi_child_free*(a2: ptr kfcgi) {.cdecl, importc: "khttp_fcgi_child_free",
    dynlib: kcgi.}
proc khttp_fcgi_test*(): cint {.cdecl, importc: "khttp_fcgi_test", dynlib: kcgi.}
proc kutil_epoch2tmvals*(a2: int64; a3: ptr cint; a4: ptr cint; a5: ptr cint;
                        a6: ptr cint; a7: ptr cint; a8: ptr cint; a9: ptr cint;
                        a10: ptr cint) {.cdecl, importc: "kutil_epoch2tmvals",
                                      dynlib: kcgi.}
proc kutil_epoch2str*(a2: int64; a3: cstring; a4: csize): cstring {.cdecl,
    importc: "kutil_epoch2str", dynlib: kcgi.}
proc kutil_epoch2utcstr*(a2: int64; a3: cstring; a4: csize): cstring {.cdecl,
    importc: "kutil_epoch2utcstr", dynlib: kcgi.}
proc kutil_date2epoch*(a2: int64; a3: int64; a4: int64): int64 {.cdecl,
    importc: "kutil_date2epoch", dynlib: kcgi.}
proc kutil_date_check*(a2: int64; a3: int64; a4: int64): cint {.cdecl,
    importc: "kutil_date_check", dynlib: kcgi.}
proc kutil_datetime2epoch*(a2: int64; a3: int64; a4: int64; a5: int64;
                          a6: int64; a7: int64): int64 {.cdecl,
    importc: "kutil_datetime2epoch", dynlib: kcgi.}
proc kutil_datetime_check*(a2: int64; a3: int64; a4: int64; a5: int64;
                          a6: int64; a7: int64): cint {.cdecl,
    importc: "kutil_datetime_check", dynlib: kcgi.}
proc kutil_urlabs*(a2: kscheme; a3: cstring; a4: uint16; a5: cstring): cstring {.cdecl,
    importc: "kutil_urlabs", dynlib: kcgi.}
proc kutil_urlpart*(a2: ptr kreq; a3: cstring; a4: cstring; a5: cstring): cstring {.
    varargs, cdecl, importc: "kutil_urlpart", dynlib: kcgi.}
proc kutil_urlpartx*(a2: ptr kreq; a3: cstring; a4: cstring; a5: cstring): cstring {.
    varargs, cdecl, importc: "kutil_urlpartx", dynlib: kcgi.}
proc kutil_urlencode*(a2: cstring): cstring {.cdecl, importc: "kutil_urlencode",
    dynlib: kcgi.}
proc kutil_invalidate*(a2: ptr kreq; a3: ptr kpair) {.cdecl,
    importc: "kutil_invalidate", dynlib: kcgi.}
proc kutil_openlog*(a2: cstring): cint {.cdecl, importc: "kutil_openlog", dynlib: kcgi.}
proc kutil_verr*(a2: ptr kreq; a3: cstring; a4: cstring; a5: va_list) {.cdecl,
    importc: "kutil_verr", dynlib: kcgi.}
proc kutil_verrx*(a2: ptr kreq; a3: cstring; a4: cstring; a5: va_list) {.cdecl,
    importc: "kutil_verrx", dynlib: kcgi.}
proc kutil_vinfo*(a2: ptr kreq; a3: cstring; a4: cstring; a5: va_list) {.cdecl,
    importc: "kutil_vinfo", dynlib: kcgi.}
proc kutil_vlog*(a2: ptr kreq; a3: cstring; a4: cstring; a5: cstring; a6: va_list) {.cdecl,
    importc: "kutil_vlog", dynlib: kcgi.}
proc kutil_vlogx*(a2: ptr kreq; a3: cstring; a4: cstring; a5: cstring; a6: va_list) {.cdecl,
    importc: "kutil_vlogx", dynlib: kcgi.}
proc kutil_vwarn*(a2: ptr kreq; a3: cstring; a4: cstring; a5: va_list) {.cdecl,
    importc: "kutil_vwarn", dynlib: kcgi.}
proc kutil_vwarnx*(a2: ptr kreq; a3: cstring; a4: cstring; a5: va_list) {.cdecl,
    importc: "kutil_vwarnx", dynlib: kcgi.}
proc kutil_log*(a2: ptr kreq; a3: cstring; a4: cstring; a5: cstring) {.varargs, cdecl,
    importc: "kutil_log", dynlib: kcgi.}
proc kutil_logx*(a2: ptr kreq; a3: cstring; a4: cstring; a5: cstring) {.varargs, cdecl,
    importc: "kutil_logx", dynlib: kcgi.}
proc kutil_info*(a2: ptr kreq; a3: cstring; a4: cstring) {.varargs, cdecl,
    importc: "kutil_info", dynlib: kcgi.}
proc kutil_warn*(a2: ptr kreq; a3: cstring; a4: cstring) {.varargs, cdecl,
    importc: "kutil_warn", dynlib: kcgi.}
proc kutil_warnx*(a2: ptr kreq; a3: cstring; a4: cstring) {.varargs, cdecl,
    importc: "kutil_warnx", dynlib: kcgi.}
proc kutil_err*(a2: ptr kreq; a3: cstring; a4: cstring) {.varargs, cdecl,
    importc: "kutil_err", dynlib: kcgi.}
proc kutil_errx*(a2: ptr kreq; a3: cstring; a4: cstring) {.varargs, cdecl,
    importc: "kutil_errx", dynlib: kcgi.}
proc kasprintf*(a2: cstringArray; a3: cstring): cint {.varargs, cdecl,
    importc: "kasprintf", dynlib: kcgi.}
proc kcalloc*(a2: csize; a3: csize): pointer {.cdecl, importc: "kcalloc", dynlib: kcgi.}
proc kmalloc*(a2: csize): pointer {.cdecl, importc: "kmalloc", dynlib: kcgi.}
proc krealloc*(a2: pointer; a3: csize): pointer {.cdecl, importc: "krealloc",
    dynlib: kcgi.}
proc kreallocarray*(a2: pointer; a3: csize; a4: csize): pointer {.cdecl,
    importc: "kreallocarray", dynlib: kcgi.}
proc kstrdup*(a2: cstring): cstring {.cdecl, importc: "kstrdup", dynlib: kcgi.}
var kmimetypes* {.importc: "kmimetypes", dynlib: kcgi.}: array[KMIME_MAX, cstring]

var khttps* {.importc: "khttps", dynlib: kcgi.}: array[KHTTP_MAX, cstring]

var kschemes* {.importc: "kschemes", dynlib: kcgi.}: array[KSCHEME_MAX, cstring]

var kresps* {.importc: "kresps", dynlib: kcgi.}: array[KRESP_MAX, cstring]

var kmethods* {.importc: "kmethods", dynlib: kcgi.}: array[KMETHOD_MAX, cstring]

var ksuffixmap* {.importc: "ksuffixmap", dynlib: kcgi.}: ptr kmimemap

var ksuffixes* {.importc: "ksuffixes", dynlib: kcgi.}: array[KMIME_MAX, cstring]
