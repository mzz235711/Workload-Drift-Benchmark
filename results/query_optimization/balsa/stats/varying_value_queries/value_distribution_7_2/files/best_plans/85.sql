/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 NestLoop(v p)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>58 AND p.Score<117 AND p.CommentCount>6 AND p.CommentCount<41 AND u.DownVotes>63 AND u.DownVotes<1796 AND v.CreationDate>'2013-09-13 00:43:49'::timestamp AND v.CreationDate<'2013-10-04 19:18:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2013-07-21 06:22:57'::timestamp AND b.Date<'2014-02-01 19:12:23'::timestamp;

