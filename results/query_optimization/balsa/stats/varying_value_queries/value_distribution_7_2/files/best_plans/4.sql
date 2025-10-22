/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<135 AND p.CommentCount>4 AND p.CommentCount<12 AND u.DownVotes>232 AND u.DownVotes<1572 AND v.CreationDate>'2012-03-13 12:38:34'::timestamp AND v.CreationDate<'2012-06-08 14:18:14'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2011-09-03 07:59:11'::timestamp AND b.Date<'2013-09-26 06:13:08'::timestamp;

