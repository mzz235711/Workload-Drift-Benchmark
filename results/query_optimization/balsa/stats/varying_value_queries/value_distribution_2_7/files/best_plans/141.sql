/*+ NestLoop(p u v b)
 MergeJoin(p u v)
 MergeJoin(p u)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 IndexScan(b)
 Leading((((p u) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<42 AND p.CommentCount>14 AND p.CommentCount<33 AND u.DownVotes>156 AND u.DownVotes<1713 AND v.CreationDate>'2011-05-22 22:27:09'::timestamp AND v.CreationDate<'2011-08-01 08:30:12'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<10 AND b.Date>'2011-12-09 12:51:05'::timestamp AND b.Date<'2014-02-17 05:04:59'::timestamp;

