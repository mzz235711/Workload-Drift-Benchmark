/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<64 AND p.CommentCount>3 AND p.CommentCount<6 AND u.DownVotes>264 AND u.DownVotes<1873 AND v.CreationDate>'2012-10-28 13:00:29'::timestamp AND v.CreationDate<'2013-07-07 01:19:14'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-04-02 16:57:29'::timestamp AND b.Date<'2011-12-19 03:03:24'::timestamp;

