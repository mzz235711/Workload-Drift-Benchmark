/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<138 AND p.CommentCount>5 AND p.CommentCount<9 AND u.DownVotes>384 AND u.DownVotes<1165 AND v.CreationDate>'2011-06-19 03:44:34'::timestamp AND v.CreationDate<'2014-08-10 21:20:56'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2012-11-25 08:06:53'::timestamp AND b.Date<'2014-03-18 06:31:38'::timestamp;

