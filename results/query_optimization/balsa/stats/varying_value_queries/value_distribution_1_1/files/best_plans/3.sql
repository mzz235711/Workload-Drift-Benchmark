/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<111 AND p.CommentCount>4 AND p.CommentCount<27 AND u.DownVotes>377 AND u.DownVotes<981 AND v.CreationDate>'2012-03-30 17:09:29'::timestamp AND v.CreationDate<'2012-11-25 01:22:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2010-11-18 17:43:20'::timestamp AND b.Date<'2012-06-22 09:55:33'::timestamp;

