/*+ MergeJoin(b v u p)
 MergeJoin(v u p)
 MergeJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>2 AND p.Score<171 AND p.CommentCount>3 AND p.CommentCount<42 AND u.DownVotes>43 AND u.DownVotes<526 AND v.CreationDate>'2011-02-25 07:05:28'::timestamp AND v.CreationDate<'2013-11-06 04:38:38'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2012-08-13 19:25:48'::timestamp AND b.Date<'2012-10-27 11:23:49'::timestamp;

