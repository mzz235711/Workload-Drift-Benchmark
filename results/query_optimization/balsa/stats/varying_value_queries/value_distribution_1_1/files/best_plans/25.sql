/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<118 AND p.CommentCount>15 AND p.CommentCount<40 AND u.DownVotes>500 AND u.DownVotes<1070 AND v.CreationDate>'2010-02-13 19:06:32'::timestamp AND v.CreationDate<'2014-01-17 08:10:53'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2010-11-06 09:48:07'::timestamp AND b.Date<'2011-07-05 02:56:42'::timestamp;

