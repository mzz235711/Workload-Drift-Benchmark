/*+ NestLoop(u b p v)
 NestLoop(u b p)
 NestLoop(u b)
 SeqScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<124 AND p.CommentCount>4 AND p.CommentCount<17 AND u.DownVotes>524 AND u.DownVotes<1265 AND v.CreationDate>'2009-03-23 16:11:38'::timestamp AND v.CreationDate<'2014-05-26 19:20:40'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2010-09-01 02:16:34'::timestamp AND b.Date<'2010-11-15 22:17:16'::timestamp;

