/*+ HashJoin(ph b c u p)
 HashJoin(b c u p)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 IndexScan(p)
 Leading((ph (b ((c u) p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.PostTypeId=2 AND b.Date>='2010-07-27 09:13:46'::timestamp AND b.Date<='2014-09-04 21:43:43'::timestamp AND u.Reputation=28 AND u.Views<=37 AND u.UpVotes<=4;

