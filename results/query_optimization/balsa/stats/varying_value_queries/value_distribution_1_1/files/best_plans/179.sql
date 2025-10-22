/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<187 AND p.CommentCount>7 AND p.CommentCount<33 AND u.DownVotes>588 AND u.DownVotes<1130 AND v.CreationDate>'2011-02-13 20:25:07'::timestamp AND v.CreationDate<'2012-08-30 17:59:46'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2012-11-02 13:51:31'::timestamp AND b.Date<'2012-12-04 18:36:40'::timestamp;

