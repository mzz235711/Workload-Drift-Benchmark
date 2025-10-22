/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<77 AND p.CommentCount>16 AND p.CommentCount<30 AND u.DownVotes>773 AND u.DownVotes<1672 AND v.CreationDate>'2010-08-07 10:42:45'::timestamp AND v.CreationDate<'2013-03-29 07:08:08'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-04-05 13:17:57'::timestamp AND b.Date<'2011-10-18 00:12:57'::timestamp;

