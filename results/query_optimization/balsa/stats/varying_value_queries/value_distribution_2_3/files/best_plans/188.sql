/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<133 AND p.CommentCount>4 AND p.CommentCount<14 AND u.DownVotes>381 AND u.DownVotes<633 AND v.CreationDate>'2011-05-02 18:31:39'::timestamp AND v.CreationDate<'2013-06-09 18:07:10'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<13 AND b.Date>'2011-03-11 15:35:26'::timestamp AND b.Date<'2012-06-01 18:33:38'::timestamp;

