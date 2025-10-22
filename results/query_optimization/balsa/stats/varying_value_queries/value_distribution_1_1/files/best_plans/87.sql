/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<82 AND p.CommentCount>19 AND p.CommentCount<40 AND u.DownVotes>201 AND u.DownVotes<1373 AND v.CreationDate>'2009-09-12 07:45:46'::timestamp AND v.CreationDate<'2014-01-05 15:27:08'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2012-09-02 21:38:02'::timestamp AND b.Date<'2012-10-21 03:49:38'::timestamp;

