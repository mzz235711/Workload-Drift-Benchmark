/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-09-13 19:47:02'::timestamp AND c.CreationDate<='2014-09-02 11:10:48'::timestamp AND u.Reputation=11;

