/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>100 AND p.Score<153 AND p.CommentCount>10 AND p.CommentCount<27 AND u.DownVotes>119 AND u.DownVotes<230 AND v.CreationDate>'2010-09-07 01:23:26'::timestamp AND v.CreationDate<'2013-03-02 20:36:11'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-04-05 00:25:59'::timestamp AND b.Date<'2013-05-31 05:28:31'::timestamp;

