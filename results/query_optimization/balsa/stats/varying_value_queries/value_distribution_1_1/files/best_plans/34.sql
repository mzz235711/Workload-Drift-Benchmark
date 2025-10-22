/*+ MergeJoin(v u p b)
 MergeJoin(v u p)
 MergeJoin(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<98 AND p.CommentCount>30 AND p.CommentCount<38 AND u.DownVotes>187 AND u.DownVotes<1166 AND v.CreationDate>'2013-12-05 04:46:38'::timestamp AND v.CreationDate<'2014-06-15 13:07:05'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2012-07-11 11:02:21'::timestamp AND b.Date<'2014-05-21 03:46:57'::timestamp;

