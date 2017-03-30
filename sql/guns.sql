/*
Navicat MySQL Data Transfer

Source Server         : 本地的
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : guns

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2017-03-30 22:41:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for _attach
-- ----------------------------
DROP TABLE IF EXISTS `_attach`;
CREATE TABLE `_attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` text,
  `status` int(11) DEFAULT NULL,
  `creater` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _attach
-- ----------------------------

-- ----------------------------
-- Table structure for _dept
-- ----------------------------
DROP TABLE IF EXISTS `_dept`;
CREATE TABLE `_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `simplename` varchar(45) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _dept
-- ----------------------------
INSERT INTO `_dept` VALUES ('1', '0', '0', '总公司', '总公司', null, '1');
INSERT INTO `_dept` VALUES ('2', '1', '1', '服务器', '服务器', null, '1');
INSERT INTO `_dept` VALUES ('14', '2', '1', '安卓', '安卓', null, '1');
INSERT INTO `_dept` VALUES ('15', '3', '1', '苹果', '服务器', null, '1');

-- ----------------------------
-- Table structure for _dict
-- ----------------------------
DROP TABLE IF EXISTS `_dict`;
CREATE TABLE `_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _dict
-- ----------------------------
INSERT INTO `_dict` VALUES ('1', '101', '0', '0', '性别', null, '0');
INSERT INTO `_dict` VALUES ('2', '101', '1', '1', '男', null, '1');
INSERT INTO `_dict` VALUES ('3', '101', '2', '1', '女', null, '7');
INSERT INTO `_dict` VALUES ('5', '901', '0', '0', '账号状态', null, '0');
INSERT INTO `_dict` VALUES ('6', '901', '1', '5', '启用', null, '0');
INSERT INTO `_dict` VALUES ('7', '901', '2', '5', '冻结', null, '0');
INSERT INTO `_dict` VALUES ('8', '901', '3', '5', '待审核', null, '2');
INSERT INTO `_dict` VALUES ('9', '901', '4', '5', '审核拒绝', null, '0');
INSERT INTO `_dict` VALUES ('10', '901', '5', '5', '已删除', null, '3');
INSERT INTO `_dict` VALUES ('11', '902', '0', '0', '状态', null, '0');
INSERT INTO `_dict` VALUES ('12', '902', '1', '11', '启用', null, '0');
INSERT INTO `_dict` VALUES ('13', '902', '2', '11', '禁用', null, '0');

-- ----------------------------
-- Table structure for _generate
-- ----------------------------
DROP TABLE IF EXISTS `_generate`;
CREATE TABLE `_generate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `realpath` varchar(255) DEFAULT NULL,
  `packagename` varchar(255) DEFAULT NULL,
  `modelname` varchar(255) DEFAULT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  `pkname` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _generate
-- ----------------------------
INSERT INTO `_generate` VALUES ('1', '测试', 'E:\\Workspaces\\blade\\SpringBlade', 'com.smallchill.gen', 'Notice', '_notice', 'id', null);

-- ----------------------------
-- Table structure for _login_log
-- ----------------------------
DROP TABLE IF EXISTS `_login_log`;
CREATE TABLE `_login_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(65) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `succeed` varchar(255) DEFAULT NULL,
  `message` text,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _login_log
-- ----------------------------
INSERT INTO `_login_log` VALUES ('12', '登录日志', '1', '2017-03-30 21:18:33', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('13', '退出日志', '1', '2017-03-30 21:33:52', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('14', '退出日志', '1', '2017-03-30 21:33:54', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('15', '退出日志', '1', '2017-03-30 21:33:58', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('16', '登录日志', '1', '2017-03-30 21:40:39', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('17', '登录日志', '1', '2017-03-30 22:01:45', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('18', '退出日志', '1', '2017-03-30 22:03:44', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('19', '登录日志', '1', '2017-03-30 22:06:50', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('20', '登录日志', '1', '2017-03-30 22:28:07', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('21', '退出日志', '1', '2017-03-30 22:28:09', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('22', '登录日志', '1', '2017-03-30 22:28:18', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('23', '登录日志', '1', '2017-03-30 22:31:15', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('24', '退出日志', '1', '2017-03-30 22:31:18', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('25', '登录日志', '1', '2017-03-30 22:32:11', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('26', '退出日志', '1', '2017-03-30 22:34:57', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('27', '登录失败日志', null, '2017-03-30 22:34:59', '成功', '账号:null,admin,账号密码错误!', '127.0.0.1');
INSERT INTO `_login_log` VALUES ('28', '登录失败日志', null, '2017-03-30 22:35:12', '成功', '账号:null,admin,账号密码错误!', '127.0.0.1');
INSERT INTO `_login_log` VALUES ('29', '登录日志', '1', '2017-03-30 22:35:14', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('30', '退出日志', '1', '2017-03-30 22:36:37', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('31', '登录失败日志', null, '2017-03-30 22:36:39', '成功', '账号:admin,账号密码错误', '127.0.0.1');
INSERT INTO `_login_log` VALUES ('32', '登录日志', '1', '2017-03-30 22:37:12', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('33', '退出日志', '1', '2017-03-30 22:37:22', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('34', '登录日志', '1', '2017-03-30 22:37:31', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('35', '退出日志', '1', '2017-03-30 22:38:46', '成功', null, '127.0.0.1');
INSERT INTO `_login_log` VALUES ('36', '登录失败日志', null, '2017-03-30 22:38:51', '成功', '账号:admin,账号密码错误', '127.0.0.1');
INSERT INTO `_login_log` VALUES ('37', '登录失败日志', null, '2017-03-30 22:39:41', '成功', '账号:admin,账号被冻结', '127.0.0.1');
INSERT INTO `_login_log` VALUES ('38', '登录日志', '1', '2017-03-30 22:40:09', '成功', null, '127.0.0.1');

-- ----------------------------
-- Table structure for _menu
-- ----------------------------
DROP TABLE IF EXISTS `_menu`;
CREATE TABLE `_menu` (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `num` int(65) DEFAULT NULL,
  `levels` int(65) DEFAULT NULL,
  `source` text,
  `path` varchar(255) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `status` int(65) DEFAULT NULL,
  `isopen` varchar(255) DEFAULT NULL,
  `istemplate` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _menu
-- ----------------------------
INSERT INTO `_menu` VALUES ('105', 'system', '0', null, '系统管理', 'fa-user', '', '1', '1', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('106', 'mgr', 'system', null, '用户管理', null, '/mgr', '1', '2', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('107', 'mgr_add', 'mgr', null, '添加用户', null, '/mgr/add', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('108', 'mgr_edit', 'mgr', null, '修改用户', null, '/mgr/edit', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('109', 'mgr_delete', 'mgr', null, '删除用户', null, '/mgr/delete', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('110', 'mgr_reset', 'mgr', null, '重置密码', null, '/mgr/reset', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('111', 'mgr_freeze', 'mgr', null, '冻结用户', null, '/mgr/freeze', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('112', 'mgr_unfreeze', 'mgr', null, '解除冻结用户', null, '/mgr/unfreeze', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('113', 'mgr_setRole', 'mgr', null, '分配角色', null, '/mgr/setRole', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('114', 'role', 'system', null, '角色管理', null, '/role', '1', '2', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('115', 'role_add', 'role', null, '添加角色', null, '/role/add', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('116', 'role_edit', 'role', null, '修改角色', null, '/role/edit', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('117', 'role_remove', 'role', null, '删除角色', null, '/role/remove', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('118', 'role_setAuthority', 'role', null, '配置权限', null, '/role/setAuthority', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('119', 'menu', 'system', null, '菜单管理', null, '/menu', '1', '2', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('120', 'menu_add', 'menu', null, '添加菜单', null, '/menu/add', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('121', 'menu_edit', 'menu', null, '修改菜单', null, '/menu/edit', '1', '3', null, null, null, '1', null, null, null);
INSERT INTO `_menu` VALUES ('122', 'menu_remove', 'menu', null, '删除菜单', null, '/menu/remove', '1', '3', null, null, null, '1', null, null, null);

-- ----------------------------
-- Table structure for _notice
-- ----------------------------
DROP TABLE IF EXISTS `_notice`;
CREATE TABLE `_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序列',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `publishtime` datetime DEFAULT NULL COMMENT '发布时间',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  `pic` int(11) DEFAULT NULL COMMENT '图片',
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _notice
-- ----------------------------
INSERT INTO `_notice` VALUES ('6', '通知1', '10', '通知111', '2017-01-16 00:00:00', '2017-01-11 08:53:20', '1', null, '3');
INSERT INTO `_notice` VALUES ('7', '通知22222', '1', '123123123', '2017-02-02 00:00:00', '2017-01-12 16:22:10', '1', null, '1');
INSERT INTO `_notice` VALUES ('8', '123123', '10', '123123', '2017-02-07 00:00:00', '2017-02-20 12:38:46', '1', null, null);

-- ----------------------------
-- Table structure for _operation_log
-- ----------------------------
DROP TABLE IF EXISTS `_operation_log`;
CREATE TABLE `_operation_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT,
  `logtype` varchar(255) DEFAULT NULL,
  `logname` varchar(255) DEFAULT NULL,
  `userid` int(65) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `method` text,
  `createtime` datetime DEFAULT NULL,
  `succeed` varchar(255) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _operation_log
-- ----------------------------
INSERT INTO `_operation_log` VALUES ('103', '异常日志', null, '1', null, null, '2017-03-30 20:33:26', '成功', 'java.lang.ArithmeticException: / by zero\r\n	at com.stylefeng.guns.modular.system.controller.MenuController.index(MenuController.java:52)\r\n	at com.stylefeng.guns.modular.system.controller.MenuControllerTTFastClassBySpringCGLIBTT27b62c1b.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:720)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n	at com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:31)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:483)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:620)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:609)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:68)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:655)\r\n	at com.stylefeng.guns.modular.system.controller.MenuControllerTTEnhancerBySpringCGLIBTT55a6b100_2.index(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:483)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:221)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:110)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:832)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:743)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:961)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:895)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:967)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:858)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:843)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:121)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:346)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:262)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\r\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:528)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1100)\r\n	at org.apache.coyote.AbstractProtocolTAbstractConnectionHandler.process(AbstractProtocol.java:687)\r\n	at org.apache.tomcat.util.net.AprEndpointTSocketProcessor.doRun(AprEndpoint.java:2508)\r\n	at org.apache.tomcat.util.net.AprEndpointTSocketProcessor.run(AprEndpoint.java:2497)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\n');
INSERT INTO `_operation_log` VALUES ('104', '业务日志', '分配角色权限', '1', 'com.stylefeng.guns.modular.system.service.impl.RoleServiceImpl', 'setAuthority', '2017-03-30 21:29:48', '成功', '[时间]:2017-03-30 21:29:48  [类名]:com.stylefeng.guns.modular.system.service.impl.RoleServiceImpl  [方法]:setAuthority  [参数]:1 & 105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122 ');
INSERT INTO `_operation_log` VALUES ('105', null, 'Runtime异常', '1', null, 'java.lang.ArithmeticException: / by zero\r\n	at com.stylefeng.guns.modular.system.controller.MenuController.index(MenuController.java:52)\r\n	at com.stylefeng.guns.modular.system.controller.MenuControllerTTFastClassBySpringCGLIBTT27b62c1b.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:720)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n	at com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:31)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:483)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:620)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:609)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:68)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:655)\r\n	at com.stylefeng.guns.modular.system.controller.MenuControllerTTEnhancerBySpringCGLIBTT19ed8a49_2.index(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:483)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:221)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:110)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:832)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:743)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:961)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:895)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:967)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:858)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:843)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:121)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:346)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:262)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\r\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:528)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1100)\r\n	at org.apache.coyote.AbstractProtocolTAbstractConnectionHandler.process(AbstractProtocol.java:687)\r\n	at org.apache.tomcat.util.net.AprEndpointTSocketProcessor.doRun(AprEndpoint.java:2508)\r\n	at org.apache.tomcat.util.net.AprEndpointTSocketProcessor.run(AprEndpoint.java:2497)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\n', '2017-03-30 22:21:09', '0', null);
INSERT INTO `_operation_log` VALUES ('106', '异常日志', null, '1', '', '', '2017-03-30 22:28:20', '成功', 'java.lang.ArithmeticException: / by zero\r\n	at com.stylefeng.guns.modular.system.controller.MenuController.index(MenuController.java:52)\r\n	at com.stylefeng.guns.modular.system.controller.MenuControllerTTFastClassBySpringCGLIBTT27b62c1b.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:720)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n	at com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:31)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:483)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:620)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:609)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:68)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:655)\r\n	at com.stylefeng.guns.modular.system.controller.MenuControllerTTEnhancerBySpringCGLIBTT76782d70_2.index(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:483)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:221)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:110)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:832)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:743)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:961)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:895)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:967)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:858)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:843)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:121)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:346)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:262)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\r\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:528)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1100)\r\n	at org.apache.coyote.AbstractProtocolTAbstractConnectionHandler.process(AbstractProtocol.java:687)\r\n	at org.apache.tomcat.util.net.AprEndpointTSocketProcessor.doRun(AprEndpoint.java:2508)\r\n	at org.apache.tomcat.util.net.AprEndpointTSocketProcessor.run(AprEndpoint.java:2497)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\n');
INSERT INTO `_operation_log` VALUES ('107', '异常日志', null, '1', null, null, '2017-03-30 22:32:25', '成功', 'java.lang.ArithmeticException: / by zero\r\n	at com.stylefeng.guns.modular.system.controller.MenuController.index(MenuController.java:52)\r\n	at com.stylefeng.guns.modular.system.controller.MenuControllerTTFastClassBySpringCGLIBTT27b62c1b.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:204)\r\n	at org.springframework.aop.framework.CglibAopProxyTCglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:720)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:157)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:85)\r\n	at com.stylefeng.guns.core.intercept.SessionInterceptor.sessionKit(SessionInterceptor.java:31)\r\n	at sun.reflect.GeneratedMethodAccessor69.invoke(Unknown Source)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:483)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:620)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:609)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:68)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:92)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:179)\r\n	at org.springframework.aop.framework.CglibAopProxyTDynamicAdvisedInterceptor.intercept(CglibAopProxy.java:655)\r\n	at com.stylefeng.guns.modular.system.controller.MenuControllerTTEnhancerBySpringCGLIBTTff74a235_2.index(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:483)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:221)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:136)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:110)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:832)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:743)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:85)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:961)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:895)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:967)\r\n	at org.springframework.web.servlet.FrameworkServlet.doGet(FrameworkServlet.java:858)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:622)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:843)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:729)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:292)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:52)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:121)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:107)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:61)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.executeChain(AdviceFilter.java:108)\r\n	at org.apache.shiro.web.servlet.AdviceFilter.doFilterInternal(AdviceFilter.java:137)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.apache.shiro.web.servlet.ProxiedFilterChain.doFilter(ProxiedFilterChain.java:66)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.executeChain(AbstractShiroFilter.java:449)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilterT1.call(AbstractShiroFilter.java:365)\r\n	at org.apache.shiro.subject.support.SubjectCallable.doCall(SubjectCallable.java:90)\r\n	at org.apache.shiro.subject.support.SubjectCallable.call(SubjectCallable.java:83)\r\n	at org.apache.shiro.subject.support.DelegatingSubject.execute(DelegatingSubject.java:383)\r\n	at org.apache.shiro.web.servlet.AbstractShiroFilter.doFilterInternal(AbstractShiroFilter.java:362)\r\n	at org.apache.shiro.web.servlet.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:125)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:346)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:262)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:240)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:207)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:212)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:106)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:502)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:141)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:79)\r\n	at org.apache.catalina.valves.AbstractAccessLogValve.invoke(AbstractAccessLogValve.java:616)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:88)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:528)\r\n	at org.apache.coyote.http11.AbstractHttp11Processor.process(AbstractHttp11Processor.java:1100)\r\n	at org.apache.coyote.AbstractProtocolTAbstractConnectionHandler.process(AbstractProtocol.java:687)\r\n	at org.apache.tomcat.util.net.AprEndpointTSocketProcessor.doRun(AprEndpoint.java:2508)\r\n	at org.apache.tomcat.util.net.AprEndpointTSocketProcessor.run(AprEndpoint.java:2497)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)\r\n	at java.util.concurrent.ThreadPoolExecutorTWorker.run(ThreadPoolExecutor.java:617)\r\n	at org.apache.tomcat.util.threads.TaskThreadTWrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:745)\r\n');

-- ----------------------------
-- Table structure for _parameter
-- ----------------------------
DROP TABLE IF EXISTS `_parameter`;
CREATE TABLE `_parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `para` text,
  `tips` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _parameter
-- ----------------------------
INSERT INTO `_parameter` VALUES ('1', '101', '100', '是否开启记录日志', '2', '1:是  2:否', '1', '7');

-- ----------------------------
-- Table structure for _relation
-- ----------------------------
DROP TABLE IF EXISTS `_relation`;
CREATE TABLE `_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2835 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _relation
-- ----------------------------
INSERT INTO `_relation` VALUES ('2817', '105', '1');
INSERT INTO `_relation` VALUES ('2818', '106', '1');
INSERT INTO `_relation` VALUES ('2819', '107', '1');
INSERT INTO `_relation` VALUES ('2820', '108', '1');
INSERT INTO `_relation` VALUES ('2821', '109', '1');
INSERT INTO `_relation` VALUES ('2822', '110', '1');
INSERT INTO `_relation` VALUES ('2823', '111', '1');
INSERT INTO `_relation` VALUES ('2824', '112', '1');
INSERT INTO `_relation` VALUES ('2825', '113', '1');
INSERT INTO `_relation` VALUES ('2826', '114', '1');
INSERT INTO `_relation` VALUES ('2827', '115', '1');
INSERT INTO `_relation` VALUES ('2828', '116', '1');
INSERT INTO `_relation` VALUES ('2829', '117', '1');
INSERT INTO `_relation` VALUES ('2830', '118', '1');
INSERT INTO `_relation` VALUES ('2831', '119', '1');
INSERT INTO `_relation` VALUES ('2832', '120', '1');
INSERT INTO `_relation` VALUES ('2833', '121', '1');
INSERT INTO `_relation` VALUES ('2834', '122', '1');

-- ----------------------------
-- Table structure for _role
-- ----------------------------
DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `tips` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _role
-- ----------------------------
INSERT INTO `_role` VALUES ('1', '1', '0', '超级管理员', '1', 'administrator', '1');

-- ----------------------------
-- Table structure for _role_ext
-- ----------------------------
DROP TABLE IF EXISTS `_role_ext`;
CREATE TABLE `_role_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `rolein` text,
  `roleout` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _role_ext
-- ----------------------------
INSERT INTO `_role_ext` VALUES ('27', '66', '1,44,49', '45');

-- ----------------------------
-- Table structure for _user
-- ----------------------------
DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `salt` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `roleid` varchar(255) DEFAULT NULL,
  `deptid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _user
-- ----------------------------
INSERT INTO `_user` VALUES ('1', 'admin', '13c12b0b12fc76d994d68478ff476e1a', 'u9oqh', '冯硕楠', '2017-02-13 00:00:00', '1', 'sn93@qq.com', '18201309300', '1', '1', '1', '2016-01-29 08:49:53', '25');
