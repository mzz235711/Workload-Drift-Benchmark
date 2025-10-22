/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<168 AND p.CommentCount>19 AND p.CommentCount<34 AND u.DownVotes>159 AND u.DownVotes<1422 AND v.CreationDate>'2009-10-11 14:14:31'::timestamp AND v.CreationDate<'2012-12-23 08:47:08'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2011-11-03 22:40:47'::timestamp AND b.Date<'2013-07-22 09:30:39'::timestamp;

