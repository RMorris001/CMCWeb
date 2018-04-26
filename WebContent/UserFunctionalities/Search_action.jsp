<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="CMC.*" import="java.util.*"%>
<% SearchControllerV2 sc = new SearchControllerV2();
int numStudentsLow, numStudentsHigh, SATVerbalLow, SATVerbalHigh, SATMathLow, SATMathHigh, expensesLow, 
	expensesHigh, numApplicantsLow, numApplicantsHigh, academicScaleLow, academicScaleHigh, socialScaleLow, socialScaleHigh,
	qualityScaleLow, qualityScaleHigh;
double percentFemaleLow, percentFemaleHigh, percentFinAidLow, percentFinAidHigh, percentAdmittedLow, percentAdmittedHigh, percentEnrolledLow, percentEnrolledHigh;
String school = request.getParameter("SchoolName").toUpperCase();
String state = request.getParameter("State").toUpperCase();
String location = request.getParameter("Location").toUpperCase();
String control = request.getParameter("Control").toUpperCase();
if(request.getParameter("StudentsL").equals(""))
	numStudentsLow = -1;
else
	numStudentsLow = Integer.parseInt(request.getParameter("StudentsL"));
if(request.getParameter("StudentsH").equals(""))
	numStudentsHigh = -1;
else
	numStudentsHigh = Integer.parseInt(request.getParameter("StudentsH"));
if(request.getParameter("FemaleL").equals(""))
	percentFemaleLow = -1;
else
	percentFemaleLow = Double.parseDouble(request.getParameter("FemaleL"));
if(request.getParameter("FemaleH").equals(""))
	percentFemaleHigh = -1;
else
	percentFemaleHigh = Double.parseDouble(request.getParameter("FemaleH"));
if(request.getParameter("SatVerbalL").equals(""))
	SATVerbalLow = -1;
else
	SATVerbalLow = Integer.parseInt(request.getParameter("SatVerbalL"));
if(request.getParameter("SatVerbalH").equals(""))
	SATVerbalHigh = -1;
else
	SATVerbalHigh = Integer.parseInt(request.getParameter("SatVerbalH"));
if(request.getParameter("SatMathL").equals(""))
	SATMathLow = -1;
else
	SATMathLow = Integer.parseInt(request.getParameter("SatMathL"));
if(request.getParameter("SatMathH").equals(""))
	SATMathHigh = -1;
else
	SATMathHigh = Integer.parseInt(request.getParameter("SatMathH"));
if(request.getParameter("ExpensesL").equals(""))
	expensesLow = -1;
else
	expensesLow = Integer.parseInt(request.getParameter("ExpensesL"));
if(request.getParameter("ExpensesH").equals(""))
	expensesHigh = -1;
else
	expensesHigh = Integer.parseInt(request.getParameter("ExpensesH"));
if(request.getParameter("AidL").equals(""))
	percentFinAidLow = -1;
else
	percentFinAidLow = Double.parseDouble(request.getParameter("AidL"));
if(request.getParameter("AidH").equals(""))
	percentFinAidHigh = -1;
else
	percentFinAidHigh = Double.parseDouble(request.getParameter("AidH"));
if(request.getParameter("ApplicantsL").equals(""))
	numApplicantsLow = -1;
else
	numApplicantsLow = Integer.parseInt(request.getParameter("ApplicantsL"));
if(request.getParameter("ApplicantsH").equals(""))
	numApplicantsHigh = -1;
else
	numApplicantsHigh = Integer.parseInt(request.getParameter("ApplicantsH"));
if(request.getParameter("AdmittedL").equals(""))
	percentAdmittedLow = -1;
else
	percentAdmittedLow = Double.parseDouble(request.getParameter("AdmittedL"));
if(request.getParameter("AdmittedH").equals(""))
	percentAdmittedHigh = -1;
else
	percentAdmittedHigh = Double.parseDouble(request.getParameter("AdmittedH"));
if(request.getParameter("EnrolledL").equals(""))
	percentEnrolledLow = -1;
else
	percentEnrolledLow = Double.parseDouble(request.getParameter("EnrolledL"));
if(request.getParameter("EnrolledH").equals(""))
	percentEnrolledHigh = -1;
else
	percentEnrolledHigh = Double.parseDouble(request.getParameter("EnrolledH"));
if(request.getParameter("AcademicsL").equals(""))
	academicScaleLow = -1;
else
	academicScaleLow = Integer.parseInt(request.getParameter("AcademicsL"));
if(request.getParameter("AcademicsH").equals(""))
	academicScaleHigh = -1;
else
	academicScaleHigh = Integer.parseInt(request.getParameter("AcademicsH"));
if(request.getParameter("SocialL").equals(""))
	socialScaleLow = -1;
else
	socialScaleLow = Integer.parseInt(request.getParameter("SocialL"));
if(request.getParameter("SocialH").equals(""))
	socialScaleHigh = -1;
else
	socialScaleHigh = Integer.parseInt(request.getParameter("SocialH"));
if(request.getParameter("QualityL").equals(""))
	qualityScaleLow = -1;
else
	qualityScaleLow = Integer.parseInt(request.getParameter("QualityL"));
if(request.getParameter("QualityH").equals(""))
	qualityScaleHigh = -1;
else
	qualityScaleHigh = Integer.parseInt(request.getParameter("QualityH"));
String emphasis0 = request.getParameter("Emphasis0");
String emphasis1 = request.getParameter("Emphasis1");
String emphasis2 = request.getParameter("Emphasis2");
String emphasis3 = request.getParameter("Emphasis3");
String emphasis4 = request.getParameter("Emphasis4");
ArrayList<String> emp = new ArrayList<String>();
emp.add(emphasis0);
emp.add(emphasis1);
emp.add(emphasis2);
emp.add(emphasis3);
emp.add(emphasis4);
//System.out.println(school+state+location+control+numStudentsLow+numStudentsHigh+percentFemaleLow+percentFemaleHigh+SATVerbalLow+SATVerbalHigh+SATMathLow+SATMathHigh+expensesLow+expensesHigh+percentFinAidLow+percentFinAidHigh+numApplicantsLow+numApplicantsHigh+percentAdmittedLow+percentAdmittedHigh+percentEnrolledLow + percentEnrolledHigh+academicScaleLow+academicScaleHigh+socialScaleLow+socialScaleHigh+qualityScaleLow+qualityScaleHigh+emp);
ArrayList<School> results = sc.search(school, state, location, control, numStudentsLow, numStudentsHigh, percentFemaleLow, percentFemaleHigh,SATVerbalLow, SATVerbalHigh, SATMathLow, SATMathHigh, expensesLow, expensesHigh, percentFinAidLow, percentFinAidHigh, numApplicantsLow,numApplicantsHigh, percentAdmittedLow, percentAdmittedHigh, percentEnrolledLow, percentEnrolledHigh, academicScaleLow, academicScaleHigh,socialScaleLow, socialScaleHigh, qualityScaleLow, qualityScaleHigh, new ArrayList<String>());
session.setAttribute("results",results);
response.sendRedirect("ViewSearchResults.jsp");
%>