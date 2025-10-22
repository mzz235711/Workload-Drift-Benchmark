/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<10 AND p.CommentCount>16 AND p.CommentCount<26 AND u.DownVotes>761 AND u.DownVotes<1499 AND v.CreationDate>'2009-07-30 06:41:36'::timestamp AND v.CreationDate<'2011-10-30 15:49:12'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2012-09-15 12:09:40'::timestamp AND b.Date<'2013-11-18 20:03:29'::timestamp;

