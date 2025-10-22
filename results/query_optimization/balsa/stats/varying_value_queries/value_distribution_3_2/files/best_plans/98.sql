/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<119 AND p.CommentCount>5 AND p.CommentCount<30 AND u.DownVotes>117 AND u.DownVotes<911 AND v.CreationDate>'2009-05-05 17:48:49'::timestamp AND v.CreationDate<'2012-07-30 00:53:49'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2011-05-13 06:39:23'::timestamp AND b.Date<'2012-01-01 04:24:56'::timestamp;

