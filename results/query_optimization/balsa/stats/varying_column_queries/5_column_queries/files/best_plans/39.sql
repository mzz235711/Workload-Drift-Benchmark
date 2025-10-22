/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2009-02-02 14:45:19'::timestamp AND c.CreationDate<='2014-08-28 12:00:41'::timestamp AND u.Reputation>=1 AND u.Reputation<=526 AND u.Views<=337;

