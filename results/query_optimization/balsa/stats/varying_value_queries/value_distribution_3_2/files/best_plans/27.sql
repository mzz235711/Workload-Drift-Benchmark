/*+ HashJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>25 AND p.Score<73 AND p.CommentCount>5 AND p.CommentCount<42 AND u.DownVotes>640 AND u.DownVotes<1833 AND v.CreationDate>'2009-06-26 04:18:49'::timestamp AND v.CreationDate<'2014-09-09 04:53:39'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-10-13 21:32:07'::timestamp AND b.Date<'2014-06-15 04:50:22'::timestamp;

