/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<15 AND p.CommentCount>4 AND p.CommentCount<23 AND u.DownVotes>727 AND u.DownVotes<1469 AND v.CreationDate>'2009-02-18 18:04:39'::timestamp AND v.CreationDate<'2011-11-23 20:45:04'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-10-27 13:57:37'::timestamp AND b.Date<'2013-06-04 04:56:30'::timestamp;

