/*+ NestLoop(v p u b)
 MergeJoin(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<142 AND p.CommentCount>1 AND p.CommentCount<44 AND u.DownVotes>200 AND u.DownVotes<1403 AND v.CreationDate>'2009-09-23 14:34:05'::timestamp AND v.CreationDate<'2014-08-18 12:43:49'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2012-07-14 05:23:13'::timestamp AND b.Date<'2014-06-08 12:58:24'::timestamp;

