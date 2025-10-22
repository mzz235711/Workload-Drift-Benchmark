/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<145 AND p.CommentCount>7 AND p.CommentCount<16 AND u.DownVotes>11 AND u.DownVotes<1798 AND v.CreationDate>'2009-04-02 21:37:52'::timestamp AND v.CreationDate<'2012-07-22 07:09:48'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2010-08-29 21:42:26'::timestamp AND b.Date<'2010-11-21 15:36:15'::timestamp;

