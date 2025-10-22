/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<39 AND p.CommentCount>19 AND p.CommentCount<32 AND u.DownVotes>394 AND u.DownVotes<1300 AND v.CreationDate>'2009-09-05 06:41:13'::timestamp AND v.CreationDate<'2013-11-28 13:56:31'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2011-06-06 04:41:21'::timestamp AND b.Date<'2011-08-12 12:29:55'::timestamp;

