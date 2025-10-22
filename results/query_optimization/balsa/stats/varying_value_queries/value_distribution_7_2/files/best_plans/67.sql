/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<56 AND p.CommentCount>16 AND p.CommentCount<22 AND u.DownVotes>442 AND u.DownVotes<1226 AND v.CreationDate>'2009-03-15 14:49:31'::timestamp AND v.CreationDate<'2013-06-21 16:37:17'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2011-08-06 07:16:06'::timestamp AND b.Date<'2014-07-07 23:35:28'::timestamp;

