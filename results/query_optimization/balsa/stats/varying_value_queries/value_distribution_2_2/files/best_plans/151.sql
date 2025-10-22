/*+ HashJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<147 AND p.CommentCount>2 AND p.CommentCount<34 AND u.DownVotes>113 AND u.DownVotes<1042 AND v.CreationDate>'2009-03-06 10:04:33'::timestamp AND v.CreationDate<'2012-01-18 23:12:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-03-16 22:29:48'::timestamp AND b.Date<'2013-06-19 03:48:19'::timestamp;

