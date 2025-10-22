/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<89 AND p.CommentCount>5 AND p.CommentCount<17 AND u.DownVotes>446 AND u.DownVotes<1704 AND v.CreationDate>'2010-08-14 15:44:58'::timestamp AND v.CreationDate<'2011-09-12 05:26:11'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<11 AND b.Date>'2010-11-23 11:26:15'::timestamp AND b.Date<'2011-06-23 14:22:33'::timestamp;

