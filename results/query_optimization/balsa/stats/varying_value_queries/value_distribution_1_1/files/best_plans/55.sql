/*+ MergeJoin(b v p u)
 MergeJoin(v p u)
 MergeJoin(p u)
 IndexScan(b)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<44 AND p.CommentCount>5 AND p.CommentCount<34 AND u.DownVotes>723 AND u.DownVotes<1362 AND v.CreationDate>'2010-09-13 20:06:32'::timestamp AND v.CreationDate<'2013-08-26 05:25:16'::timestamp AND v.VoteTypeId>10 AND v.VoteTypeId<12 AND b.Date>'2011-09-02 18:26:50'::timestamp AND b.Date<'2014-08-06 23:00:11'::timestamp;

