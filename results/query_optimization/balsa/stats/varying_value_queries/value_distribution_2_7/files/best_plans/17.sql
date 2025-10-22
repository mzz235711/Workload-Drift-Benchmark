/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<154 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>565 AND u.DownVotes<1073 AND v.CreationDate>'2009-09-03 17:49:28'::timestamp AND v.CreationDate<'2011-03-14 01:51:39'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<9 AND b.Date>'2012-12-22 17:34:33'::timestamp AND b.Date<'2014-02-05 17:36:03'::timestamp;

