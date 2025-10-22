/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<28 AND p.CommentCount>8 AND p.CommentCount<19 AND u.DownVotes>196 AND u.DownVotes<1896 AND v.CreationDate>'2011-05-27 18:33:54'::timestamp AND v.CreationDate<'2013-12-11 18:37:34'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2011-02-09 16:26:18'::timestamp AND b.Date<'2013-12-22 01:08:54'::timestamp;

