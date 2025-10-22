/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<88 AND p.CommentCount>0 AND p.CommentCount<22 AND u.DownVotes>29 AND u.DownVotes<1555 AND v.CreationDate>'2013-05-20 18:24:22'::timestamp AND v.CreationDate<'2014-05-03 12:16:18'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2014-01-26 12:33:08'::timestamp AND b.Date<'2014-03-17 22:25:20'::timestamp;

