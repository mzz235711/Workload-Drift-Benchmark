/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>114 AND p.Score<144 AND p.CommentCount>8 AND p.CommentCount<33 AND u.DownVotes>43 AND u.DownVotes<1130 AND v.CreationDate>'2011-01-15 17:49:51'::timestamp AND v.CreationDate<'2013-01-12 05:01:13'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2010-12-03 22:35:49'::timestamp AND b.Date<'2012-10-30 17:01:14'::timestamp;

