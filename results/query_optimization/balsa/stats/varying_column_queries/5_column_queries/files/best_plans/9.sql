/*+ HashJoin(ph c u)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 Leading((ph (c u))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-25 20:07:35'::timestamp AND ph.CreationDate>='2010-10-02 22:12:51'::timestamp AND ph.CreationDate<='2014-09-14 02:46:55'::timestamp AND u.Reputation<=776 AND u.Views=0;

