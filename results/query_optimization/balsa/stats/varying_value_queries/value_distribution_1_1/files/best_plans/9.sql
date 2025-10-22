/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<126 AND p.CommentCount>8 AND p.CommentCount<30 AND u.DownVotes>394 AND u.DownVotes<1306 AND v.CreationDate>'2013-01-03 06:37:58'::timestamp AND v.CreationDate<'2014-01-12 17:06:51'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2011-02-18 23:34:23'::timestamp AND b.Date<'2014-06-23 19:53:39'::timestamp;

