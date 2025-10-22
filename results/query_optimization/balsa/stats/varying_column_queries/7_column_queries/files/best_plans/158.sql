/*+ HashJoin(v ph u b c)
 MergeJoin(v ph u b)
 HashJoin(ph u b)
 HashJoin(u b)
 IndexScan(v)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 SeqScan(c)
 Leading(((v (ph (u b))) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND b.Date<='2014-09-10 14:43:33'::timestamp AND v.BountyAmount>=0 AND v.CreationDate>='2009-02-02 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Reputation<=381 AND u.Views<=27 AND u.DownVotes>=0;

