/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date<='2014-09-02 09:23:05'::timestamp AND u.DownVotes=0 AND u.CreationDate>='2010-10-19 07:38:56'::timestamp;

