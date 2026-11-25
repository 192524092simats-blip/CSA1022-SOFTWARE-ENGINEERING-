# Experiment 10 - Library Management System MoSCoW prioritization workbook (openpyxl)
from openpyxl import Workbook
from openpyxl.styles import Font, PatternFill, Alignment, Border, Side

ROWS = [
 ("R1", "Add a feature to search books by title and author", "Must-Have",
  "Core function of a library; every user needs it and it is simple and cheap to build."),
 ("R2", "Implement an online book reservation system", "Must-Have",
  "High impact on students and staff; feasible with a standard database and web form."),
 ("R3", "Generate monthly reports on borrowed books for administrators", "Should-Have",
  "Important for management decisions but the library can run without it at launch; moderate effort."),
 ("R4", "Enable email notifications for overdue books", "Should-Have",
  "Reduces late returns and manual follow-up; needs an email service but is low cost."),
 ("R5", "Add support for QR code scanning for borrowing and returning books", "Could-Have",
  "Speeds up the counter but needs scanners and labelled books; nice to have if time and budget allow."),
 ("R6", "Create a user-friendly dashboard for librarians", "Must-Have",
  "Librarians run daily operations from it; high impact and feasible within the project time."),
 ("R7", "Allow users to review and rate books", "Could-Have",
  "Improves engagement but does not affect core operations; low priority."),
 ("R8", "Integrate a chatbot for user assistance", "Won't-Have",
  "Needs extra development, training data and budget; not required for this release."),
 ("R9", "Develop a mobile app version of the system", "Won't-Have",
  "A separate app is costly and time-consuming; the responsive web app covers mobile use for now."),
 ("R10", "Provide multi-language support", "Won't-Have",
  "Needs translation and testing effort; the user base is served in one language in this release."),
]
COL = {"Must-Have": "C6EFCE", "Should-Have": "FFEB9C", "Could-Have": "BDD7EE", "Won't-Have": "F4B6B6"}

wb = Workbook(); ws = wb.active; ws.title = "MoSCoW"
ws.append(["Library Management System - MoSCoW Prioritization"]); ws.merge_cells("A1:D1")
ws["A1"].font = Font(bold=True, size=14); ws["A1"].alignment = Alignment(horizontal="center")
ws.append(["Requirement ID", "Requirement Description", "MoSCoW Category", "Justification"])
thin = Side(style="thin"); box = Border(left=thin, right=thin, top=thin, bottom=thin)
for c in ws[2]:
    c.font = Font(bold=True, color="FFFFFF"); c.fill = PatternFill("solid", fgColor="1F3864"); c.border = box
    c.alignment = Alignment(horizontal="center", vertical="center")
for r in ROWS:
    ws.append(r)
for row in ws.iter_rows(min_row=3, max_row=2 + len(ROWS)):
    for c in row:
        c.border = box; c.alignment = Alignment(wrap_text=True, vertical="top")
    row[2].fill = PatternFill("solid", fgColor=COL[row[2].value]); row[2].font = Font(bold=True)
for col, w in zip("ABCD", (16, 52, 18, 70)):
    ws.column_dimensions[col].width = w
ws.append([]); ws.append(["Summary"])
ws.cell(row=ws.max_row, column=1).font = Font(bold=True)
for k in COL:
    ws.append([k, f'=COUNTIF(C3:C{2 + len(ROWS)},"{k}")'])
ws.page_setup.orientation = "landscape"; ws.page_setup.fitToWidth = 1; ws.page_setup.fitToHeight = 0
ws.sheet_properties.pageSetUpPr.fitToPage = True
wb.save("Library Management System - MoSCoW Prioritization.xlsx")
print("Saved: Library Management System - MoSCoW Prioritization.xlsx")
