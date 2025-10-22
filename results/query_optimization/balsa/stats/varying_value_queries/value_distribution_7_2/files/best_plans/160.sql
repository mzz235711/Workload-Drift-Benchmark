/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<77 AND p.CommentCount>1 AND p.CommentCount<19 AND u.DownVotes>189 AND u.DownVotes<1040 AND v.CreationDate>'2013-01-28 08:08:42'::timestamp AND v.CreationDate<'2013-04-09 02:30:29'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2011-11-02 20:36:17'::timestamp AND b.Date<'2012-12-22 15:58:21'::timestamp;

