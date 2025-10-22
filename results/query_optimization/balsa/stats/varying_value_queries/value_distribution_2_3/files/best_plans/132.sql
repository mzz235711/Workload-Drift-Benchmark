/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<103 AND p.CommentCount>3 AND p.CommentCount<20 AND u.DownVotes>163 AND u.DownVotes<1290 AND v.CreationDate>'2012-10-31 01:34:42'::timestamp AND v.CreationDate<'2012-12-23 11:32:54'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2010-08-13 08:15:03'::timestamp AND b.Date<'2013-11-27 22:55:22'::timestamp;

