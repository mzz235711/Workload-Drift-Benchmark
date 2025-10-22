/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<185 AND p.CommentCount>3 AND p.CommentCount<40 AND u.DownVotes>291 AND u.DownVotes<406 AND v.CreationDate>'2013-05-16 00:50:26'::timestamp AND v.CreationDate<'2013-09-29 22:04:07'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2010-07-25 21:37:59'::timestamp AND b.Date<'2012-03-10 12:44:14'::timestamp;

