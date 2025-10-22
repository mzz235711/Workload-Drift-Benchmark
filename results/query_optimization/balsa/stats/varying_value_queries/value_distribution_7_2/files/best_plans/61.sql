/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(u b)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<82 AND p.CommentCount>8 AND p.CommentCount<34 AND u.DownVotes>302 AND u.DownVotes<541 AND v.CreationDate>'2010-01-24 18:56:08'::timestamp AND v.CreationDate<'2014-01-24 23:11:24'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2012-01-15 21:37:42'::timestamp AND b.Date<'2013-02-14 06:24:24'::timestamp;

