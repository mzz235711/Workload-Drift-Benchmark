/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<101 AND p.CommentCount>12 AND p.CommentCount<35 AND u.DownVotes>348 AND u.DownVotes<918 AND v.CreationDate>'2012-11-01 01:58:43'::timestamp AND v.CreationDate<'2014-05-08 04:23:01'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<12 AND b.Date>'2010-11-02 13:29:03'::timestamp AND b.Date<'2011-06-07 14:41:43'::timestamp;

