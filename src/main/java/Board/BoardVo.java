package Board;
// 한글 컬럼명 사용하면 검색 오류 발생... 아마도 Getter/Setter때문
public class BoardVo {
	private String id;
	private String name;
	private int age;
	private String grade;
	private String job;
	private int point;
	public BoardVo() {};




	public BoardVo(String id, String name, int age, String grade, String job, int point) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.grade = grade;
		this.job = job;
		this.point = point;
	}




	@Override
	public String toString() {
		return "BoardVo [id=" + id + ", name=" + name + ", age=" + age + ", grade=" + grade + ", job=" + job
				+ ", point=" + point + "]";
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}

}
