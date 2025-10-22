/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<116 AND p.CommentCount>10 AND p.CommentCount<22 AND u.DownVotes>44 AND u.DownVotes<624 AND v.CreationDate>'2009-05-13 05:27:30'::timestamp AND v.CreationDate<'2011-04-01 20:08:03'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2012-01-17 04:34:27'::timestamp AND b.Date<'2013-04-05 22:15:10'::timestamp;

