/*+ NestLoop(v p u b)
 NestLoop(v p u)
 MergeJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>42 AND p.Score<155 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>102 AND u.DownVotes<1173 AND v.CreationDate>'2010-05-02 15:26:21'::timestamp AND v.CreationDate<'2012-02-24 18:08:53'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2011-07-27 05:16:53'::timestamp AND b.Date<'2012-06-04 23:01:49'::timestamp;

