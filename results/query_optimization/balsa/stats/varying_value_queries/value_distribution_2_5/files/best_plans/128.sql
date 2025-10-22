/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<50 AND p.CommentCount>8 AND p.CommentCount<17 AND u.DownVotes>163 AND u.DownVotes<886 AND v.CreationDate>'2009-06-12 05:51:27'::timestamp AND v.CreationDate<'2012-06-07 16:22:02'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2011-02-15 06:16:12'::timestamp AND b.Date<'2012-08-19 09:32:04'::timestamp;

