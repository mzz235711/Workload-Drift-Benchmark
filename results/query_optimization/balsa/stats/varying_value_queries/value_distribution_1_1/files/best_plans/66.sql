/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<143 AND p.CommentCount>14 AND p.CommentCount<30 AND u.DownVotes>288 AND u.DownVotes<972 AND v.CreationDate>'2010-06-12 18:47:13'::timestamp AND v.CreationDate<'2011-11-05 11:14:09'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-01-10 13:35:01'::timestamp AND b.Date<'2014-08-13 04:51:08'::timestamp;

