/*+ HashJoin(c ph u p b)
 HashJoin(c ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((c (ph (u p))) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.Score>=-2 AND p.CommentCount>=0 AND p.CommentCount<=14 AND p.CreationDate>='2010-09-28 19:02:38'::timestamp AND p.CreationDate<='2014-08-30 16:36:56'::timestamp AND ph.PostHistoryTypeId=2 AND b.Date<='2014-08-25 21:02:47'::timestamp AND u.Reputation>=1 AND u.DownVotes<=0;

