/*+ MergeJoin(v u b p)
 NestLoop(u b p)
 NestLoop(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 Leading((v ((u b) p))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<63 AND p.CommentCount>5 AND p.CommentCount<23 AND u.DownVotes>188 AND u.DownVotes<1504 AND v.CreationDate>'2011-01-05 21:38:53'::timestamp AND v.CreationDate<'2013-02-04 10:05:07'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2012-02-08 03:12:07'::timestamp AND b.Date<'2012-02-27 19:52:55'::timestamp;

