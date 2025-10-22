/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<157 AND p.CommentCount>9 AND p.CommentCount<23 AND u.DownVotes>245 AND u.DownVotes<1638 AND v.CreationDate>'2009-07-18 12:28:19'::timestamp AND v.CreationDate<'2014-01-16 17:49:56'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2013-06-08 23:17:16'::timestamp AND b.Date<'2013-08-04 23:27:51'::timestamp;

