/*+ HashJoin(c u b ph v)
 HashJoin(u b ph v)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 IndexScan(ph)
 IndexScan(v)
 Leading((c (((u b) ph) v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, votes as v, users as u WHERE u.Id =b.UserId AND b.UserId = ph.UserId AND ph.UserId = v.UserId AND v.UserId = c.UserId AND b.Date>='2010-07-20 14:34:12'::timestamp AND b.Date<='2014-09-02 18:55:37'::timestamp AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=44 AND u.UpVotes=0;

