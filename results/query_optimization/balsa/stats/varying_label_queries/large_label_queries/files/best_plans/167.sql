/*+ HashJoin(c ph u b)
 MergeJoin(ph u b)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 Leading((c (ph (u b)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND b.Date<='2014-09-02 19:49:37'::timestamp AND u.Reputation=11 AND u.Views>=0;

