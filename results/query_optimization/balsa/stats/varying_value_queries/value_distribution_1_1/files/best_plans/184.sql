/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<60 AND p.CommentCount>5 AND p.CommentCount<38 AND u.DownVotes>458 AND u.DownVotes<1075 AND v.CreationDate>'2012-06-01 03:45:32'::timestamp AND v.CreationDate<'2014-04-13 22:48:22'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2010-12-02 12:11:36'::timestamp AND b.Date<'2013-01-28 13:43:42'::timestamp;

